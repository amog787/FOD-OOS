.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$850Ez4IkbH192NuVFW_l12sZL_E;

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

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    invoke-static {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->lambda$850Ez4IkbH192NuVFW_l12sZL_E(Lcom/android/server/wm/LaunchObserverRegistryImpl;Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    return-void
.end method
