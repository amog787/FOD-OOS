.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssVisibilityControl;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;->f$0:Lcom/android/server/location/GnssVisibilityControl;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;->f$0:Lcom/android/server/location/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssVisibilityControl;->lambda$showLocationIcon$5$GnssVisibilityControl(Ljava/lang/String;)V

    return-void
.end method
