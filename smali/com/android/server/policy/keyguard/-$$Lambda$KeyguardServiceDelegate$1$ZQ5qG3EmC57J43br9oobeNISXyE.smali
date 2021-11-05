.class public final synthetic Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;

    invoke-direct {v0}, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;-><init>()V

    sput-object v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;->INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;

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

    invoke-static {}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->lambda$onServiceDisconnected$0()V

    return-void
.end method
