.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$nvFlbQuyFtBS9R4AKhgP_fuBTQk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Landroid/media/MediaRoute2Info;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, v0, v1, p3, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setRouteVolumeWithManagerLocked$17(Ljava/lang/Object;JLandroid/media/MediaRoute2Info;I)V

    return-void
.end method
