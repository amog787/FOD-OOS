.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$notifyLocationInParentDisplayChanged$23(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
