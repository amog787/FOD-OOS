.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$WYtPK6Ebqjgxm8_8Cot-ijv_z_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getOverlaysForTarget$1(Ljava/lang/Object;)Landroid/content/om/OverlayInfo;

    move-result-object p1

    return-object p1
.end method
