.class final Lcom/android/server/CountryDetectorService$Receiver;
.super Ljava/lang/Object;
.source "CountryDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CountryDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private final mKey:Landroid/os/IBinder;

.field private final mListener:Landroid/location/ICountryListener;

.field final synthetic this$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/location/ICountryListener;

    .line 63
    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    .line 65
    invoke-interface {p2}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->this$0:Lcom/android/server/CountryDetectorService;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/CountryDetectorService;->access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V

    .line 70
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p1, Lcom/android/server/CountryDetectorService$Receiver;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    move-object v1, p1

    check-cast v1, Lcom/android/server/CountryDetectorService$Receiver;

    iget-object v1, v1, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getListener()Landroid/location/ICountryListener;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mListener:Landroid/location/ICountryListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/server/CountryDetectorService$Receiver;->mKey:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
