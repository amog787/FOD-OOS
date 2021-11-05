.class final Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackupPasswordHash"
.end annotation


# instance fields
.field public hash:Ljava/lang/String;

.field public salt:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "salt"    # [B

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    .line 258
    return-void
.end method
