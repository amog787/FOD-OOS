.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field private final synthetic f$1:J

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$1:J

    iput-object p4, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-wide v1, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$1:J

    iget-object v3, p0, Lcom/android/server/location/-$$Lambda$GnssStatusListenerHelper$AtHI8E6PAjonHH1N0ZGabW0VF6c;->f$2:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroid/location/IGnssStatusListener;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/GnssStatusListenerHelper;->lambda$onNmeaReceived$4$GnssStatusListenerHelper(JLjava/lang/String;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
