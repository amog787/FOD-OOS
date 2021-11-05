.class public Lcom/android/server/backup/keyvalue/BackupRequest;
.super Ljava/lang/Object;
.source "BackupRequest.java"


# instance fields
.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 37
    if-ne p0, p1, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/android/server/backup/keyvalue/BackupRequest;

    if-nez v0, :cond_1

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 44
    .local v0, "that":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupRequest{pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
