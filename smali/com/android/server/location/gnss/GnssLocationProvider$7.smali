.class Lcom/android/server/location/gnss/GnssLocationProvider$7;
.super Landroid/database/ContentObserver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 816
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$7;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 819
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$7;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1100(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 820
    return-void
.end method
