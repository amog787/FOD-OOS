.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->lambda$applyPayload$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
