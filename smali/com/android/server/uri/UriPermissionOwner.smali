.class public Lcom/android/server/uri/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field private externalToken:Landroid/os/Binder;

.field private final mOwner:Ljava/lang/Object;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/uri/UriGrantsManagerInternal;

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/uri/UriGrantsManagerInternal;
    .param p2, "owner"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 50
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .line 61
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 108
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 115
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 142
    :cond_1
    return-void
.end method

.method public getExternalToken()Landroid/os/Binder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 122
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 126
    :cond_0
    return-void
.end method

.method removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .locals 4
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "mode"    # I

    .line 76
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 80
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_0
    invoke-virtual {v2, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 82
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    .end local v2    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 90
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_3
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 95
    .restart local v2    # "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    iget-object v3, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    :cond_4
    invoke-virtual {v2, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 97
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 100
    .end local v2    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_5
    goto :goto_1

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 102
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 105
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_7
    return-void
.end method

.method public removeUriPermissions()V
    .locals 1

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    .line 69
    return-void
.end method

.method removeUriPermissions(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 73
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 129
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 133
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 145
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 146
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 148
    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 150
    .local v4, "p":Lcom/android/server/uri/UriPermission;
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v6, 0x20b00000002L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 151
    .end local v4    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_0

    .line 152
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 154
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_3

    .line 155
    monitor-enter v2

    .line 156
    :try_start_1
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 157
    .restart local v4    # "p":Lcom/android/server/uri/UriPermission;
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v6, 0x20b00000003L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 158
    .end local v4    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_2

    .line 159
    :cond_2
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 161
    :cond_3
    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 162
    return-void
.end method
