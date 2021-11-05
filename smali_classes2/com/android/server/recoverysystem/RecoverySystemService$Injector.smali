.class Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method


# virtual methods
.method public connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .locals 2

    .line 123
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    invoke-direct {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;-><init>()V

    .line 124
    .local v0, "socket":Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->connectService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 126
    const/4 v1, 0x0

    return-object v1

    .line 128
    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;
    .locals 1

    .line 95
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    return-object v0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method public getUncryptPackageFileName()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUncryptPackageFileWriter()Ljava/io/FileWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 103
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 107
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public threadSleep(J)V
    .locals 0
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 133
    return-void
.end method

.method public uncryptPackageFileDelete()Z
    .locals 1

    .line 111
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
