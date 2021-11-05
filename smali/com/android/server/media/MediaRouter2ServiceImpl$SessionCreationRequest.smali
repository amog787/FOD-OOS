.class final Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;
.super Ljava/lang/Object;
.source "MediaRouter2ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouter2ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionCreationRequest"
.end annotation


# instance fields
.field public final mManagerRequestId:J

.field public final mOldSession:Landroid/media/RoutingSessionInfo;

.field public final mRoute:Landroid/media/MediaRoute2Info;

.field public final mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

.field public final mUniqueRequestId:J


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;JJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0
    .param p1, "routerRecord"    # Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
    .param p2, "uniqueRequestId"    # J
    .param p4, "managerRequestId"    # J
    .param p6, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p7, "route"    # Landroid/media/MediaRoute2Info;

    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 2037
    iput-wide p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    .line 2038
    iput-wide p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 2039
    iput-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 2040
    iput-object p7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 2041
    return-void
.end method
