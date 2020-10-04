.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$XuttQzhrcmNWN2IO00g0PChmzQM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->lambda$onDraw$4(ILjava/util/ArrayList;)V

    return-void
.end method
