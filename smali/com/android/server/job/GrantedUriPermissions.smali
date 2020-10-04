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
.method private constructor <init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    .locals 3
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "grantFlags"    # I
    .param p3, "uid"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 45
    iput p2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    .line 46
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 47
    iput-object p4, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    .line 48
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 49
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "job: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    .line 50
    return-void
.end method

.method public static checkGrantFlags(I)Z
    .locals 1
    .param p0, "grantFlags"    # I

    .line 61
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 9
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;

    .line 91
    invoke-static {p5}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "perms":Lcom/android/server/job/GrantedUriPermissions;
    if-eqz p1, :cond_1

    .line 96
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 99
    :cond_1
    return-object v0
.end method

.method public static createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 12
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v8

    .line 68
    .local v8, "grantFlags":I
    invoke-static {v8}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const/4 v9, 0x0

    .line 74
    .local v9, "perms":Lcom/android/server/job/GrantedUriPermissions;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 75
    .local v10, "data":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 76
    move-object v0, p0

    move-object v1, v10

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move v5, v8

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    move-object v9, v0

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    .line 81
    .local v11, "clip":Landroid/content/ClipData;
    if-eqz v11, :cond_2

    .line 82
    move-object v0, p0

    move-object v1, v11

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move v5, v8

    move-object/from16 v6, p5

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v9

    .line 86
    :cond_2
    return-object v9
.end method

.method private static grantClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 12
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 105
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 106
    .local v0, "N":I
    const/4 v1, 0x0

    move-object/from16 v10, p7

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v1, "i":I
    .local v10, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_0
    if-ge v1, v0, :cond_0

    .line 107
    move-object v11, p1

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lcom/android/server/job/GrantedUriPermissions;->grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v10

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v11, p1

    .line 110
    .end local v1    # "i":I
    return-object v10
.end method

.method private static grantItem(Landroid/app/IActivityManager;Landroid/content/ClipData$Item;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 10
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 135
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    goto :goto_0

    .line 135
    .end local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :cond_0
    move-object/from16 v0, p7

    .line 139
    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 140
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/android/server/job/GrantedUriPermissions;->grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    .line 144
    :cond_1
    return-object v0
.end method

.method private static grantUri(Landroid/app/IActivityManager;Landroid/net/Uri;ILjava/lang/String;IILjava/lang/String;Lcom/android/server/job/GrantedUriPermissions;)Lcom/android/server/job/GrantedUriPermissions;
    .locals 15
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .param p5, "grantFlags"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "curPerms"    # Lcom/android/server/job/GrantedUriPermissions;

    .line 117
    nop

    .line 118
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 117
    move-object/from16 v1, p1

    :try_start_1
    invoke-static {v1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 119
    .local v8, "sourceUserId":I
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v0

    .line 120
    .end local p1    # "uri":Landroid/net/Uri;
    .local v1, "uri":Landroid/net/Uri;
    if-nez p7, :cond_0

    .line 121
    :try_start_2
    new-instance v0, Lcom/android/server/job/GrantedUriPermissions;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    :try_start_3
    invoke-direct {v0, p0, v12, v11, v13}, Lcom/android/server/job/GrantedUriPermissions;-><init>(Landroid/app/IActivityManager;IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v14, v0

    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    goto :goto_0

    .line 126
    .end local v0    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .end local v8    # "sourceUserId":I
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :catch_0
    move-exception v0

    move-object/from16 v14, p7

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    goto :goto_1

    .line 120
    .restart local v8    # "sourceUserId":I
    :cond_0
    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 123
    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v14, "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_0
    :try_start_4
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v2

    iget-object v3, v14, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v1

    move/from16 v7, p5

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 125
    iget-object v0, v14, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 128
    nop

    .end local v8    # "sourceUserId":I
    goto :goto_2

    .line 126
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v14    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :catch_3
    move-exception v0

    move-object v10, p0

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v10, p0

    move-object/from16 v1, p1

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 127
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p7    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v14    # "curPerms":Lcom/android/server/job/GrantedUriPermissions;
    :goto_1
    const-string v2, "JobScheduler"

    const-string v3, "AM dead"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v14
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 160
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 162
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 163
    iget v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 164
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 168
    .local v3, "u":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 169
    const-wide v4, 0x20900000005L

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 166
    .end local v3    # "u":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 174
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGrantFlags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    const-string v0, " mSourceUserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTag="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPermissionOwner="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public revoke(Landroid/app/IActivityManager;)V
    .locals 6
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 53
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 54
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/GrantedUriPermissions;->mPermissionOwner:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/job/GrantedUriPermissions;->mGrantFlags:I

    iget v5, p0, Lcom/android/server/job/GrantedUriPermissions;->mSourceUserId:I

    .line 54
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/GrantedUriPermissions;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method
