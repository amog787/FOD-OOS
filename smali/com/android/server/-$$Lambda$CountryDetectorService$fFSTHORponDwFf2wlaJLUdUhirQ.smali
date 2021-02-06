.class public final synthetic Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$1:Landroid/location/Country;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;->f$0:Lcom/android/server/CountryDetectorService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;->f$1:Landroid/location/Country;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;->f$0:Lcom/android/server/CountryDetectorService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;->f$1:Landroid/location/Country;

    invoke-virtual {v0, v1}, Lcom/android/server/CountryDetectorService;->lambda$initialize$1$CountryDetectorService(Landroid/location/Country;)V

    return-void
.end method
