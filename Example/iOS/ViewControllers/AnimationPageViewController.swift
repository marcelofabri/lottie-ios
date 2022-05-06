// Created by Marcelo Fabri on 5/6/22.
// Copyright © 2022 Airbnb Inc. All rights reserved.

import Foundation
import UIKit

// MARK: - AnimationPageViewController

final class AnimationPageViewController: UIPageViewController {

  // MARK: Internal

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    dataSource = self

    setViewControllers(
      [makeViewController()],
      direction: .forward,
      animated: true,
      completion: nil)
  }

  // MARK: Private

  private func makeViewController() -> UIViewController {
    AnimationPreviewViewController("Samples/Watermelon", backgroundBehavior: .pause)
  }
}

// MARK: UIPageViewControllerDataSource

extension AnimationPageViewController: UIPageViewControllerDataSource {

  func pageViewController(
    _: UIPageViewController,
    viewControllerBefore _: UIViewController)
    -> UIViewController?
  {
    makeViewController()
  }

  func pageViewController(
    _: UIPageViewController,
    viewControllerAfter _: UIViewController)
    -> UIViewController?
  {
    makeViewController()
  }

}
