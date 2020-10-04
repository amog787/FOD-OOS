.class abstract Lcom/android/server/LocationManagerService$LinkedListenerBase;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LinkedListenerBase"
.end annotation


# instance fields
.field protected final mCallerIdentity:Lcom/android/server/location/CallerIdentity;

.field protected final mListenerName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;)V
    .locals 0
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;
    .param p2, "listenerName"    # Ljava/lang/String;

    .line 3232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3233
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 3234
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    .line 3235
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/location/CallerIdentity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/LocationManagerService$1;

    .line 3227
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$LinkedListenerBase;-><init>(Lcom/android/server/location/CallerIdentity;Ljava/lang/String;)V

    return-void
.end method
