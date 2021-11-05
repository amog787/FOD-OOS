.class public final synthetic Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;->f$0:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v0}, Lcom/android/server/CountryDetectorService;->lambda$systemRunning$0$CountryDetectorService()V

    return-void
.end method
