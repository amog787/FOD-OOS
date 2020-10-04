.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssNavigationMessageProvider$FPgP5DRMyheqM1CQ4z7jkoJwIFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# instance fields
.field private final synthetic f$0:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssNavigationMessageProvider$FPgP5DRMyheqM1CQ4z7jkoJwIFg;->f$0:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssNavigationMessageProvider$FPgP5DRMyheqM1CQ4z7jkoJwIFg;->f$0:Landroid/location/GnssNavigationMessage;

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/GnssNavigationMessageProvider;->lambda$onNavigationMessageAvailable$0(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;Lcom/android/server/location/CallerIdentity;)V

    return-void
.end method
