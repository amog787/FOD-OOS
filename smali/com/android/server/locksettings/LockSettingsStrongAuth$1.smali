.class Lcom/android/server/locksettings/LockSettingsStrongAuth$1;
.super Landroid/os/Handler;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStrongAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 373
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$600(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$500(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 391
    goto :goto_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 388
    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 382
    goto :goto_0

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V

    .line 379
    goto :goto_0

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;->this$0:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V

    .line 385
    nop

    .line 399
    :goto_0
    return-void
.end method
