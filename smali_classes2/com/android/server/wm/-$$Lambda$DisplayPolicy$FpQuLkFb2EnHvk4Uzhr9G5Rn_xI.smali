.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/InputEventReceiver$Factory;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;->f$0:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$FpQuLkFb2EnHvk4Uzhr9G5Rn_xI;->f$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->lambda$beginLayoutLw$8$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object p1

    return-object p1
.end method
