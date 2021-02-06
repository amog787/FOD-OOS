.class final Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field final mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

.field final mManagerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRouterRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p2, "userId"    # I

    .line 1057
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 1053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 1054
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1058
    iput p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 1059
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-direct {v0, p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 1060
    return-void
.end method


# virtual methods
.method findRouterRecordLocked(Ljava/lang/String;)Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 1070
    .local v1, "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    iget-object v2, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1071
    return-object v1

    .line 1073
    .end local v1    # "routerRecord":Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    :cond_0
    goto :goto_0

    .line 1074
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method init()V
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->init()V

    .line 1064
    return-void
.end method
