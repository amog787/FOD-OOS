.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;

    invoke-direct {v0}, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;-><init>()V

    sput-object v0, Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;->INSTANCE:Lcom/android/server/media/-$$Lambda$MediaRouter2ServiceImpl$Eyh_l7NfdhxthjHC_Kro-9iv_RE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p3, Landroid/media/IMediaRouter2Manager;

    invoke-static {p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerManagerLocked$16(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method
