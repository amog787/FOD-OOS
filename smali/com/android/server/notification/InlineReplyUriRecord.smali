.class public final Lcom/android/server/notification/InlineReplyUriRecord;
.super Ljava/lang/Object;
.source "InlineReplyUriRecord.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    .line 44
    iput-object p2, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    .line 45
    iput-object p3, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public addUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionOwner()Landroid/os/IBinder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    return-object v0
.end method

.method public getUris()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getUserId()I
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 77
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    const/4 v1, 0x0

    return v1

    .line 80
    :cond_0
    return v0
.end method
