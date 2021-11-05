.class public final synthetic Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Landroid/graphics/Matrix;

.field public final synthetic f$3:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$2:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$3:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$2:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;->f$3:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$computeWindowRegionInScreen$0$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method
