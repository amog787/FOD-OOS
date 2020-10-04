.class public interface abstract Lcom/android/server/wm/WindowContainerListener;
.super Ljava/lang/Object;
.source "WindowContainerListener.java"


# virtual methods
.method public onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 28
    return-void
.end method

.method public abstract registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
.end method

.method public abstract unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
.end method
