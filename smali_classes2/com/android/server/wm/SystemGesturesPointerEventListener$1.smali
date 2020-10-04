.class Lcom/android/server/wm/SystemGesturesPointerEventListener$1;
.super Landroid/view/GestureDetector;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SystemGesturesPointerEventListener;->lambda$systemReady$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p4, "x2"    # Landroid/os/Handler;

    .line 134
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$1;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method
