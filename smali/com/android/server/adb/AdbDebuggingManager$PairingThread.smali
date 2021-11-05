.class Lcom/android/server/adb/AdbDebuggingManager$PairingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairingThread"
.end annotation


# static fields
.field static final SERVICE_PROTOCOL:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field private mGuid:Ljava/lang/String;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private mPairingCode:Ljava/lang/String;

.field private mPort:I

.field private mPublicKey:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "pairingCode"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 196
    const-string v0, "AdbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "adb-tls-pairing"

    aput-object v2, v0, v1

    const-string v1, "_%s._tcp."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "persist.adb.wifi.guid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 200
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    .line 203
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 204
    invoke-static {p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 205
    return-void
.end method

.method private native native_pairing_cancel()V
.end method

.method private native native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_pairing_wait()Z
.end method


# virtual methods
.method public cancelPairing()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_cancel()V

    .line 253
    return-void
.end method

.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 2
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to register pairing service(err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->cancelPairing()V

    .line 265
    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 258
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .line 270
    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 2
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to unregister pairing service(err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbDebuggingManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public run()V
    .locals 6

    .line 209
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "AdbDebuggingManager"

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "adbwifi guid was not set"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mGuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPairingCode:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    .line 214
    if-lez v0, :cond_3

    const v2, 0xffff

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 221
    .local v0, "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 223
    iget v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 224
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->native_pairing_wait()Z

    move-result v2

    .line 241
    .local v2, "paired":Z
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v3, p0}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V

    .line 243
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->mPublicKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v5, "publicKey"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 248
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$PairingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$100(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void

    .line 215
    .end local v0    # "serviceInfo":Landroid/net/nsd/NsdServiceInfo;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "paired":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    :goto_1
    const-string v0, "Unable to start pairing server"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
