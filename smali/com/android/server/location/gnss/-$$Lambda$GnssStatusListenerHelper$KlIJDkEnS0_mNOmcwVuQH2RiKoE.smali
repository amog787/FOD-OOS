.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;

    invoke-direct {v0}, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;-><init>()V

    sput-object v0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$KlIJDkEnS0_mNOmcwVuQH2RiKoE;

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

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onStatusChanged$0(Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
