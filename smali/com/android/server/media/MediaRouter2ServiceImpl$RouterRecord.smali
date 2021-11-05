.class final Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RouterRecord"
.end annotation


# instance fields
.field public mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field public final mHasConfigureWifiDisplayPermission:Z

.field public final mHasModifyAudioRoutingPermission:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mRouter:Landroid/media/IMediaRouter2;

.field public final mRouterId:I

.field public final mSelectRouteSequenceNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectedRoute:Landroid/media/MediaRoute2Info;

.field public final mUid:I

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouter2ServiceImpl;
    .param p2, "userRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
    .param p3, "router"    # Landroid/media/IMediaRouter2;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "hasConfigureWifiDisplayPermission"    # Z
    .param p8, "hasModifyAudioRoutingPermission"    # Z

    .line 1094
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 1096
    iput-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mSelectRouteSequenceNumbers:Ljava/util/List;

    .line 1098
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1099
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 1100
    iput p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    .line 1101
    iput p5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPid:I

    .line 1102
    iput-boolean p7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasConfigureWifiDisplayPermission:Z

    .line 1103
    iput-boolean p8, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    .line 1104
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 1105
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->routerDied(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    .line 1114
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    invoke-interface {v0}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1109
    return-void
.end method
