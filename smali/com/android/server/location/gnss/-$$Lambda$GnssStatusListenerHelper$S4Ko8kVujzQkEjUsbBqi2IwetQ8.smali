.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;

    invoke-direct {v0}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$S4Ko8kVujzQkEjUsbBqi2IwetQ8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 0

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onStatusChanged$1(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
