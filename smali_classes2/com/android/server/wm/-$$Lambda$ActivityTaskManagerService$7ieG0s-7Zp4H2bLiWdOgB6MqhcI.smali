.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

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

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService;

    check-cast p2, Landroid/os/IBinder;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$7ieG0s-7Zp4H2bLiWdOgB6MqhcI(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V

    return-void
.end method
