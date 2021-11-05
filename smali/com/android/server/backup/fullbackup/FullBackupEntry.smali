.class public Lcom/android/server/backup/fullbackup/FullBackupEntry;
.super Ljava/lang/Object;
.source "FullBackupEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public lastBackup:J

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "when"    # J

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/fullbackup/FullBackupEntry;)I
    .locals 5
    .param p1, "other"    # Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 31
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    iget-wide v2, p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 32
    const/4 v0, -0x1

    return v0

    .line 33
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 34
    const/4 v0, 0x1

    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/fullbackup/FullBackupEntry;->compareTo(Lcom/android/server/backup/fullbackup/FullBackupEntry;)I

    move-result p1

    return p1
.end method
