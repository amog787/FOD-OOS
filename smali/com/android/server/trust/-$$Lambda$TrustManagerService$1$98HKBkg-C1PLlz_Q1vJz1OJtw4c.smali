.class public final synthetic Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;

    invoke-direct {v0}, Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;-><init>()V

    sput-object v0, Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;->INSTANCE:Lcom/android/server/trust/-$$Lambda$TrustManagerService$1$98HKBkg-C1PLlz_Q1vJz1OJtw4c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/trust/TrustManagerService$1;->lambda$reportKeyguardShowingChanged$0()V

    return-void
.end method
