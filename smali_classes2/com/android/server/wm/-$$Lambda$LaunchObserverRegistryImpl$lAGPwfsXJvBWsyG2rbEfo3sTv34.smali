.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$lAGPwfsXJvBWsyG2rbEfo3sTv34;

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

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->lambda$lAGPwfsXJvBWsyG2rbEfo3sTv34(Lcom/android/server/wm/LaunchObserverRegistryImpl;[B)V

    return-void
.end method
