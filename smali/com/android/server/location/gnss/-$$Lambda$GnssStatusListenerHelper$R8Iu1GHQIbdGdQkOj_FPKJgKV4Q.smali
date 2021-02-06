.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusListenerHelper;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$1:J

    iput-object p4, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$0:Lcom/android/server/location/gnss/GnssStatusListenerHelper;

    iget-wide v1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$1:J

    iget-object v3, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssStatusListenerHelper$R8Iu1GHQIbdGdQkOj_FPKJgKV4Q;->f$2:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroid/location/IGnssStatusListener;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/gnss/GnssStatusListenerHelper;->lambda$onNmeaReceived$4$GnssStatusListenerHelper(JLjava/lang/String;Landroid/location/IGnssStatusListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
