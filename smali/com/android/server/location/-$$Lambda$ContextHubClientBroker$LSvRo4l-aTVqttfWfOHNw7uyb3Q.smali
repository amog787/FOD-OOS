.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/location/ContextHubClientBroker;->lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method
