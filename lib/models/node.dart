import 'package:flutter/foundation.dart';

/// 노드 타입을 구분할 수 있는 열거형(혹은 상수)
enum NodeType {
  category,
  task,
  record,
}

/// 모든 노드가 공통적으로 갖는 필드/메서드를 모아둔 추상 클래스
abstract class Node {
  final String id;
  final String name;
  final NodeType nodeType;

  /// 각 노드는 자식 노드 목록을 가질 수도 있음 (분류나 작업이 자식 노드를 가질지 여부에 따라)
  @protected
  final List<Node> children = [];

  Node({
    required this.id,
    required this.name,
    required this.nodeType,
  });

  /// 자식 노드를 추가
  void addChild(Node child) {
    children.add(child);
  }

  /// 자식 노드를 제거
  bool removeChild(Node child) {
    return children.remove(child);
  }

  /// 자식 노드 목록 가져오기
  List<Node> getChildren() {
    return children;
  }

  /// 노드를 JSON으로 직렬화한다면 (예시)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'nodeType': nodeType.toString(),
      'children': children.map((c) => c.toJson()).toList(),
    };
  }
}
