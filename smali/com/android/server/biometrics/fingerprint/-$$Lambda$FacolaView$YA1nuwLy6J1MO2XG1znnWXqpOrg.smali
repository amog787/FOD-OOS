.class public final synthetic Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$FacolaView$YA1nuwLy6J1MO2XG1znnWXqpOrg;

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

    invoke-static {p1, p2}, Lcom/android/server/biometrics/fingerprint/FacolaView;->lambda$onDraw$1(ILjava/util/ArrayList;)V

    return-void
.end method
