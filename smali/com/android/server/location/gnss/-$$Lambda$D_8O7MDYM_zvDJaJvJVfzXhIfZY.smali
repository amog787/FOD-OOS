.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;

    invoke-direct {v0}, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$D_8O7MDYM_zvDJaJvJVfzXhIfZY;

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

    invoke-static {p1}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object p1

    return-object p1
.end method
