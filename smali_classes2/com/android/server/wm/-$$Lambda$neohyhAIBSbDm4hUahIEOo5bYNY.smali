.class public final synthetic Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;->f$0:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    return-void
.end method
