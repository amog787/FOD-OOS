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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 51
    iput-object p2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .line 62
    instance-of v0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 2
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 114
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v0

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 126
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 157
    monitor-enter v0

    .line 158
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "readUriPermissions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 159
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "writeUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 165
    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 168
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 169
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 171
    monitor-enter v2

    .line 172
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

    .line 173
    .local v4, "p":Lcom/android/server/uri/UriPermission;
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v6, 0x20b00000002L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 174
    .end local v4    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_0

    .line 175
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 177
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v2, :cond_3

    .line 178
    monitor-enter v2

    .line 179
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

    .line 180
    .restart local v4    # "p":Lcom/android/server/uri/UriPermission;
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    const-wide v6, 0x20b00000003L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/uri/GrantUri;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 181
    .end local v4    # "p":Lcom/android/server/uri/UriPermission;
    goto :goto_2

    .line 182
    :cond_2
    monitor-exit v2

    goto :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 184
    :cond_3
    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    return-void
.end method

.method public getExternalToken()Landroid/os/Binder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/uri/UriPermission;)V
    .locals 2
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 135
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 136
    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 141
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method removeUriPermission(Lcom/android/server/uri/GrantUri;I)V
    .locals 5
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "mode"    # I

    .line 77
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 80
    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 84
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_0

    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v4}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    :cond_0
    invoke-virtual {v3, p0}, Lcom/android/server/uri/UriPermission;->removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 86
    iget-object v4, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v4, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 89
    .end local v3    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_1
    goto :goto_0

    .line 90
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 96
    :cond_3
    :goto_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 101
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_4

    iget-object v3, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/uri/GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    :cond_4
    invoke-virtual {v2, p0}, Lcom/android/server/uri/UriPermission;->removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V

    .line 103
    iget-object v3, p0, Lcom/android/server/uri/UriPermissionOwner;->mService:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 106
    .end local v2    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_5
    goto :goto_2

    .line 107
    :cond_6
    iget-object v2, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    iput-object v1, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 111
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_7
    return-void
.end method

.method public removeUriPermissions()V
    .locals 1

    .line 69
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    .line 70
    return-void
.end method

.method removeUriPermissions(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 74
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/uri/UriPermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 147
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 151
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/uri/UriPermissionOwner;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
