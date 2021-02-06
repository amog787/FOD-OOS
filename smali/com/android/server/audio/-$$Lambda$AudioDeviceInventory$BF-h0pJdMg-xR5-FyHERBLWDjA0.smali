.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;

    invoke-direct {v0}, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;-><init>()V

    sput-object v0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;->INSTANCE:Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$BF-h0pJdMg-xR5-FyHERBLWDjA0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$configureHdmiPlugIntent$11(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
