.class public final synthetic Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;->INSTANCE:Lcom/android/server/location/-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/location/AppOpsHelper;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/location/AppOpsHelper$1;->lambda$onOpChanged$0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
