.class final Lcom/android/server/wm/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 387
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$H;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$1100(Lcom/android/server/wm/ImmersiveModeConfirmation;)V

    .line 396
    nop

    .line 401
    :goto_0
    return-void
.end method
