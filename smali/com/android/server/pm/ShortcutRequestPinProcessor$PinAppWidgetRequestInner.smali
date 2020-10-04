.class Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinAppWidgetRequestInner"
.end annotation


# instance fields
.field final mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mExtras:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "processor"    # Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .param p2, "resultIntent"    # Landroid/content/IntentSender;
    .param p3, "launcherUid"    # I
    .param p4, "appWidgetProviderInfo"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$1;)V

    .line 154
    iput-object p4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 155
    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Lcom/android/server/pm/ShortcutRequestPinProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .param p2, "x1"    # Landroid/content/IntentSender;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x4"    # Landroid/os/Bundle;
    .param p6, "x5"    # Lcom/android/server/pm/ShortcutRequestPinProcessor$1;

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method
