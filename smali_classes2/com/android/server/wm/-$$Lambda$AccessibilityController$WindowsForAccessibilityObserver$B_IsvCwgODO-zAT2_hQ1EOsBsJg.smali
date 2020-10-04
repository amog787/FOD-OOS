.class public final synthetic Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

.field private final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;->f$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;->f$1:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->lambda$populateVisibleWindowsOnScreenLocked$1$AccessibilityController$WindowsForAccessibilityObserver(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
