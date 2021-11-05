.class interface abstract Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RestoreDataConsumer"
.end annotation


# virtual methods
.method public abstract consumeRestoreData(Landroid/app/backup/BackupDataInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
