.class public Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "SliceProviderPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceProviderPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceAuthority"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mPkgs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "tracker"    # Lcom/android/server/slice/DirtyTracker;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 140
    iput-object p1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 134
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    .end local p1    # "pkg":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 194
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 195
    .local v0, "other":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 196
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 195
    :goto_1
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getPkgs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 181
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 182
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "pkg"

    .line 184
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 187
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :cond_1
    monitor-exit p0

    return-void

    .line 179
    .end local v0    # "depth":I
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v0, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_0
    monitor-exit p0

    return-void

    .line 154
    .end local p1    # "pkg":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "(%s: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 171
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    invoke-static {}, Lcom/android/server/slice/SliceProviderPermissions;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    iget-object v2, p0, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-static {}, Lcom/android/server/slice/SliceProviderPermissions;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkg"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_0
    monitor-exit p0

    return-void

    .line 169
    .end local v0    # "N":I
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
