.class Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oemlock/OemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/oemlock/OemLockService;

    .line 114
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 122
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->getLockName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-object v2

    .line 124
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v2
.end method

.method public isDeviceOemUnlocked()Z
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$600(Lcom/android/server/oemlock/OemLockService;)V

    .line 218
    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "locked":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x30

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 223
    return v2

    .line 221
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isOemUnlockAllowed()Z
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$600(Lcom/android/server/oemlock/OemLockService;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 205
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 206
    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 207
    .local v2, "allowed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v3, v2}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    nop

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return v2

    .line 210
    .end local v2    # "allowed":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw v2
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 147
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    return v2

    .line 149
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw v2
.end method

.method public isOemUnlockAllowedByUser()Z
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$400(Lcom/android/server/oemlock/OemLockService;)V

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v2

    .line 190
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw v2
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .locals 3
    .param p1, "allowed"    # Z
    .param p2, "signature"    # [B

    .line 130
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$200(Lcom/android/server/oemlock/OemLockService;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$300(Lcom/android/server/oemlock/OemLockService;)V

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 135
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw v2
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .locals 4
    .param p1, "allowedByUser"    # Z

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$400(Lcom/android/server/oemlock/OemLockService;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->access$300(Lcom/android/server/oemlock/OemLockService;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 167
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$500(Lcom/android/server/oemlock/OemLockService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->access$000(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 176
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2, p1}, Lcom/android/server/oemlock/OemLockService;->access$100(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    nop

    .line 180
    return-void

    .line 172
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Carrier does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .end local p1    # "allowedByUser":Z
    throw v2

    .line 168
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .restart local p1    # "allowedByUser":Z
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Admin does not allow OEM unlock"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .end local p1    # "allowedByUser":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/oemlock/OemLockService$2;
    .restart local p1    # "allowedByUser":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v2
.end method
