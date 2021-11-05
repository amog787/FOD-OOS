.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$HxuyDpZFoEiAyb_LAlroiGtZTKk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$setDiscoveryRequestWithRouter2Locked$6(Ljava/lang/Object;)V

    return-void
.end method
