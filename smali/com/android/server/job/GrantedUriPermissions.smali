.class public final Lcom/android/server/job/GrantedUriPermissions;
.super Ljava/lang/Object;
.source "GrantedUriPermissions.java"


# instance fields
.field private final mGrantFlags:I

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mSourceUserId:I

.field private final mTag:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "grantFlags"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 44
    iput p1, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 45
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 46
    iput-object p3, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 48
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 49
    return-void
.end method

.method public static checkGrantFlags(I)Z
    .locals 1
    .param p0, "grantFlags"    # I

    .line 60
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 8
    .param p0, "clip"    # Landroid/content/ClipData;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 90
    invoke-static {p4}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, "perms":Lcom/android/server/job/GrantedUriPermissions;
    if-eqz p0, :cond_1

    .line 95
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 98
    :cond_1
    return-object v0
.end method

.method public static createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 11
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 67
    .local v7, "grantFlags":I
    invoke-static {v7}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const/4 v8, 0x0

    .line 73
    .local v8, "perms":Lcom/android/server/job/GrantedUriPermissions;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 74
    .local v9, "data":Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 75
    move-object v0, v9

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v8

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    .line 80
    .local v10, "clip":Landroid/content/ClipData;
    if-eqz v10, :cond_2

    .line 81
    move-object v0, v10

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v8

    .line 85
    :cond_2
    return-object v8
.end method

.method private static grantClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9
    .param p0, "clip"    # Landroid/content/ClipData;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 104
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 105
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p6

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    return-object p6
.end method

.method private static grantItem(Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 8
    .param p0, "item"    # Landroid/content/ClipData$Item;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 134
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p6

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 139
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object p6

    .line 143
    :cond_1
    return-object p6
.end method

.method private static grantUri(Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "grantFlags"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 116
    nop

    .line 117
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 116
    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v7

    .line 118
    .local v7, "sourceUserId":I
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    move-object p0, v0

    .line 119
    if-nez p6, :cond_0

    .line 120
    new-instance v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/job/GrantedUriPermissions;-><init>(IILjava/lang/String;)V

    move-object p6, v0

    .line 122
    :cond_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v1

    iget-object v2, p6, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    move v3, p1

    move-object v4, p2

    move-object v5, p0

    move v6, p4

    move v8, p3

    invoke-interface/range {v1 .. v8}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 124
    iget-object v0, p6, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    nop

    .end local v7    # "sourceUserId":I
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "JobScheduler"

    const-string v2, "AM dead"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object p6
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 159
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 161
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 162
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 167
    .local v3, "u":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 168
    const-wide v4, 0x20900000005L

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    .end local v3    # "u":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 173
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 150
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public revoke()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v5, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 53
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 52
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method
