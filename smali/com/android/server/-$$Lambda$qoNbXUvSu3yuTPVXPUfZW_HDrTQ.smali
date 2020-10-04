.class public final synthetic Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object p1

    return-object p1
.end method
