.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/SettingsHelper$UserSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onSettingChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$Jsn9f_NWM0cs884cOI1fOaFZw8M(Lcom/android/server/location/LocationManagerService;I)V

    return-void
.end method
