.class public final synthetic Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;->INSTANCE:Lcom/android/server/-$$Lambda$BinderCallsStatsService$SettingsObserver$bif9uA0lzoT6htcKe6MNsrH_ha4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveWorkSourceUid(I)I
    .locals 0

    invoke-static {p1}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->lambda$onChange$0(I)I

    move-result p1

    return p1
.end method
