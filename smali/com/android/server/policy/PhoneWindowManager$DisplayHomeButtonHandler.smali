.class Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayHomeButtonHandler"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private mHomeConsumed:Z

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomePressed:Z

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0
    .param p2, "displayId"    # I

    .line 1891
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    new-instance p1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1892
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 1893
    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 1873
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
    .param p1, "x1"    # Z

    .line 1873
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    .line 1873
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    return v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1981
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1982
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1984
    :cond_0
    return-void
.end method

.method private handleLongPressOnHome(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .line 1987
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    return-void

    .line 1990
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1991
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    const-string v3, "Home - Long Press"

    invoke-virtual {v1, v2, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    .line 1993
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined home long press behavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2002
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2001
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1998
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 1999
    goto :goto_0

    .line 1995
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1200(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1996
    nop

    .line 2005
    :goto_0
    return-void
.end method


# virtual methods
.method handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)I
    .locals 13
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1896
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    .line 1897
    .local v0, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 1898
    .local v1, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1899
    .local v2, "down":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 1901
    .local v5, "canceled":Z
    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v7, "WindowManager"

    if-eqz v6, :cond_1

    .line 1902
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    .line 1903
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v3

    .line 1902
    const-string v8, "handleHomeButton in display#%d mHomePressed = %b"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_1
    const/4 v6, -0x1

    if-nez v2, :cond_6

    .line 1909
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez v8, :cond_2

    .line 1910
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->access$2500(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1913
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1914
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    if-eqz v8, :cond_3

    .line 1915
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeConsumed:Z

    .line 1916
    return v6

    .line 1919
    :cond_3
    if-eqz v5, :cond_4

    .line 1920
    const-string v3, "Ignoring HOME; event canceled."

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    return v6

    .line 1925
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 1926
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1927
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1928
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1929
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    .line 1928
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1930
    return v6

    .line 1934
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;

    invoke-direct {v4, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1935
    return v6

    .line 1938
    :cond_6
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1939
    invoke-virtual {v7, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v7

    .line 1940
    .local v7, "info":Lcom/android/internal/policy/KeyInterceptionInfo;
    if-eqz v7, :cond_a

    .line 1943
    iget v8, v7, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v9, 0x7d9

    if-eq v8, v9, :cond_9

    iget v8, v7, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    const/16 v9, 0x7f8

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1945
    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    .line 1949
    :cond_7
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_a

    aget v11, v8, v10

    .line 1950
    .local v11, "t":I
    iget v12, v7, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    if-ne v12, v11, :cond_8

    .line 1952
    return v6

    .line 1949
    .end local v11    # "t":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1947
    :cond_9
    :goto_2
    return v4

    .line 1958
    :cond_a
    if-nez v1, :cond_c

    .line 1959
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    .line 1960
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    if-eqz v8, :cond_b

    .line 1961
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapPending:Z

    .line 1962
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1963
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleDoubleTapOnHome()V

    goto :goto_3

    .line 1966
    :cond_b
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v4

    if-ne v4, v3, :cond_d

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    if-nez v3, :cond_d

    .line 1968
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_3

    .line 1970
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_d

    .line 1971
    if-nez v0, :cond_d

    .line 1973
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;

    invoke-direct {v4, p0, p2}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI;-><init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1976
    :cond_d
    :goto_3
    return v6
.end method

.method public synthetic lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler()V
    .locals 2

    .line 1934
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public synthetic lambda$handleHomeButton$1$PhoneWindowManager$DisplayHomeButtonHandler(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1973
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleLongPressOnHome(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2009
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->mHomePressed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mDisplayId = %d, mHomePressed = %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
