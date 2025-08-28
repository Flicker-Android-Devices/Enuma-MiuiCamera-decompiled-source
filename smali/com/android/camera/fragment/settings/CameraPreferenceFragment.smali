.class public Lcom/android/camera/fragment/settings/CameraPreferenceFragment;
.super Lcom/android/camera/fragment/settings/BasePreferenceFragment;
.source "CameraPreferenceFragment.java"

# interfaces
.implements Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;


# static fields
.field public static final INTENT_TYPE:Ljava/lang/String; = "intent_type"

.field public static final INTENT_VALUE_SCROLL_TO_TRACK_FOCUS:Ljava/lang/Integer;

.field public static final INTENT_VIDEO_QUALITY:Ljava/lang/String; = "intent_video_quality"

.field public static final KEY_WATERMARK:Ljava/lang/String; = "pref_watermark_key"

.field public static final PREF_KEY_POPUP_CAMERA:Ljava/lang/String; = "pref_popup_camera"

.field public static final PREF_KEY_PRIVACY:Ljava/lang/String; = "pref_privacy"

.field public static final PREF_KEY_RESTORE:Ljava/lang/String; = "pref_restore"

.field public static final SCROLL_TO:Ljava/lang/String; = "scroll_to"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mAllowLocationAccess:Z

.field public mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

.field public mCustomization:Landroidx/preference/Preference;

.field public mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mGoToActivity:Z

.field public mHasReset:Z

.field public mIsFrontCamera:Z

.field public mNoiseSetting:Landroidx/preference/Preference;

.field public mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mPhotoAssistanceTips:Landroidx/preference/Preference;

.field public mPrivacyWatermark:Landroidx/preference/Preference;

.field public mProfessionDisplay:Landroidx/preference/Preference;

.field public mRecordLocation:Landroidx/preference/Preference;

.field public mRetainCameraStatus:Landroidx/preference/Preference;

.field public mTipsGuideSetting:Landroidx/preference/Preference;

.field public mVideoCastDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

.field public mVideoDenoise:Landroidx/preference/Preference;

.field public mVideoIntentQuality:I

.field public mWatermark:Landroidx/preference/Preference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->INTENT_VALUE_SCROLL_TO_TRACK_FOCUS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAllowLocationAccess:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 5
    new-instance v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$1;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->restorePreferences()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/content/SharedPreferences;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0o0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restorePreferences onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->closeLocationPreference()V

    return-void
.end method

.method private addAdvancePreferences()V
    .locals 9

    const-string v0, "category_advance_setting"

    const v1, 0x7f120252

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string/jumbo v4, "pref_camera_live_sticker_internal"

    const v5, 0x7f050021

    const v6, 0x7f120740

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, v0

    .line 3
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v4, "pref_video_capture_repeating"

    const v5, 0x7f050059

    const v6, 0x7f120872

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v4, "pref_camera_facedetection_key"

    const v5, 0x7f050019

    const v6, 0x7f1206de

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v4, "pref_camera_facedetection_auto_hidden_key"

    const v5, 0x7f050018

    const v6, 0x7f1206dd

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v4, "pref_camera_video_show_faceview"

    const v5, 0x7f05005a

    const v6, 0x7f1207d1

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo00O()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedNonSatUWPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v5, 0x7f05002f

    const v6, 0x7f12076e

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_portrait_with_facebeauty_key"

    move-object v2, p0

    move-object v3, v0

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 10
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo00O()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const v5, 0x7f050015

    const v6, 0x7f120694

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_dual_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 11
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 12
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0Oo()Z

    move-result v1

    if-eqz v1, :cond_4

    const v5, 0x7f050016

    const v6, 0x7f120695

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_dual_sat_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_4
    const v5, 0x7f050026

    const v6, 0x7f120750

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_mfnr_sat_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    const v5, 0x7f05003c

    const v6, 0x7f1207ac

    const-string/jumbo v4, "pref_camera_sr_enable_key"

    .line 15
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oO0O0o()Z

    move-result v1

    if-eqz v1, :cond_5

    const v5, 0x7f05002d

    const v6, 0x7f120760

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_parallel_process_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_5
    const v5, 0x7f050034

    const v6, 0x7f120774

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_quick_shot_anim_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 19
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOooO0()Z

    move-result v1

    if-eqz v1, :cond_6

    const v5, 0x7f050043

    const v6, 0x7f1207d0

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_video_sat_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_6
    const v5, 0x7f05001a

    const v6, 0x7f1207b9

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_touch_focus_delay_key"

    move-object v2, p0

    move-object v3, v0

    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo0O()Z

    move-result v1

    if-eqz v1, :cond_7

    const v5, 0x7f050035

    const v6, 0x7f120775

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_quick_shot_enable_key"

    move-object v2, p0

    move-object v3, v0

    .line 23
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_7
    const v5, 0x7f120662

    const v6, 0x7f120666

    const v7, 0x7f03001a

    const v8, 0x7f03001b

    const-string/jumbo v4, "pref_camera_autoexposure_key"

    move-object v2, p0

    move-object v3, v0

    .line 24
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    const-string/jumbo v4, "pref_video_autoexposure_key"

    .line 25
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    .line 26
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getTrackEyeUiState(I)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 27
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_8

    const v5, 0x7f05003f

    const v6, 0x7f1207be

    const v7, 0x7f1207bd

    const-string/jumbo v4, "pref_camera_track_eye_preferred_key"

    move-object v2, p0

    move-object v3, v0

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_camera_track_eye_preferred_key"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    :cond_8
    return-void
.end method

.method private addCommonPreferences()V
    .locals 10

    const-string v0, "category_common_setting"

    const v1, 0x7f120688

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f120806

    const-string/jumbo v2, "pref_customization_key"

    .line 4
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    const v5, 0x7f050038

    const v6, 0x7f12077c

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_recordlocation_key"

    move-object v2, p0

    move-object v3, v0

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OO0O()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoIntent()Z

    move-result v1

    if-nez v1, :cond_3

    const v5, 0x7f05003b

    const v6, 0x7f1207aa

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camerasound_key"

    move-object v2, p0

    move-object v3, v0

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 9
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v1

    if-eqz v1, :cond_4

    const v5, 0x7f050045

    const v6, 0x7f120801

    const v7, 0x7f120800

    const-string/jumbo v4, "pref_cup_camera_position_key"

    move-object v2, p0

    move-object v3, v0

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 11
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O00()Z

    move-result v1

    if-eqz v1, :cond_5

    const v5, 0x7f050033

    const v6, 0x7f120772

    const v7, 0x7f120771

    const-string/jumbo v4, "pref_camera_proximity_lock_key"

    move-object v2, p0

    move-object v3, v0

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 13
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f120853

    const v2, 0x7f120852

    const-string/jumbo v3, "pref_retain_camera_status_key"

    .line 14
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V

    .line 15
    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0O0o()Z

    move-result v1

    if-eqz v1, :cond_8

    const v5, 0x7f050047

    const v6, 0x7f12036a

    .line 17
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f120369

    goto :goto_0

    :cond_7
    const v1, 0x7f120368

    :goto_0
    move v7, v1

    const-string/jumbo v4, "pref_feature_auto_download_key"

    move-object v2, p0

    move-object v3, v0

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 19
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v1

    const/4 v9, -0x1

    if-eqz v1, :cond_9

    const v1, 0x7f12083e

    const-string/jumbo v2, "pref_popup_camera"

    .line 20
    invoke-virtual {p0, v0, v2, v1, v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V

    :cond_9
    const v5, 0x7f120650

    const v6, 0x7f120659

    const v7, 0x7f030018

    const v8, 0x7f030019

    const-string/jumbo v4, "pref_camera_antibanding_key"

    move-object v2, p0

    move-object v3, v0

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    .line 22
    invoke-static {}, Lcom/android/camera/storage/Storage;->hasSecondaryStorage()Z

    move-result v1

    if-eqz v1, :cond_a

    const v5, 0x7f05005d

    const v6, 0x7f12083f

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_priority_storage"

    move-object v2, p0

    move-object v3, v0

    .line 23
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 24
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0O0o()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v5, -0x1

    const v6, 0x7f120874

    const v7, 0x7f120873

    const-string/jumbo v4, "pref_video_cast"

    move-object v2, p0

    move-object v3, v0

    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    :cond_b
    const v1, 0x7f120643

    const v2, 0x7f120644

    const-string/jumbo v3, "pref_auto_boot"

    .line 26
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V

    const v1, 0x7f120840

    const-string/jumbo v2, "pref_privacy"

    .line 27
    invoke-virtual {p0, v0, v2, v1, v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V

    const v1, 0x7f12030d

    const-string/jumbo v2, "pref_restore"

    .line 28
    invoke-virtual {p0, v0, v2, v1, v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;II)V

    return-void
.end method

.method private addModulePreferences()V
    .locals 14

    const-string v0, "category_module_setting"

    const v1, 0x7f12082c

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Ooooooo()Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getDualCameraWaterMarkState(Z)Z

    move-result v2

    .line 5
    iget v3, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getTimeWaterMarkState(I)Z

    move-result v3

    .line 6
    iget v4, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v8, 0xba

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v4, v8, :cond_1

    const/16 v5, 0xa6

    if-eq v4, v5, :cond_1

    const/16 v5, 0xb0

    if-eq v4, v5, :cond_1

    .line 7
    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v5, 0xd2

    if-eq v4, v5, :cond_1

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v10

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const/4 v5, -0x1

    const v6, 0x7f1207df

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_time_watermark_key"

    move-object v2, p0

    move-object v3, v0

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    const/4 v5, -0x1

    const v6, 0x7f120693

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_dualcamera_watermark_key"

    move-object v2, p0

    move-object v3, v0

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    goto :goto_2

    :cond_3
    const v2, 0x7f1208b9

    const-string/jumbo v3, "pref_watermark_key"

    .line 10
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 11
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v4, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v4}, Lcom/android/camera/CameraSettings;->getWaterMarkSettingUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/SettingUiState;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v4, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v4, v3, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 14
    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getVideoTagSettingUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v9

    const-string/jumbo v2, "videoTagSetting"

    .line 15
    invoke-virtual {v9, v2}, Lcom/android/camera/SettingUiState;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-boolean v2, v9, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_5

    const v5, 0x7f050044

    const v6, 0x7f1207d2

    const v7, 0x7f1207d3

    const-string/jumbo v4, "pref_camera_video_tag_key"

    move-object v2, p0

    move-object v3, v0

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_video_tag_key"

    invoke-virtual {p0, v2, v3, v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 19
    :cond_5
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getTrackFocusUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v9

    .line 20
    iget-boolean v2, v9, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_6

    const v5, 0x7f050040

    const v6, 0x7f1207c2

    const v7, 0x7f1207c1

    const-string/jumbo v4, "pref_camera_track_focus_preferred_key"

    move-object v2, p0

    move-object v3, v0

    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 22
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_track_focus_preferred_key"

    invoke-virtual {p0, v2, v3, v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 23
    :cond_6
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    if-ne v2, v8, :cond_7

    const v2, 0x7f120844

    const-string/jumbo v3, "pref_privacy_watermark_entry"

    .line 24
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 25
    :cond_7
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_c

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    if-nez v2, :cond_c

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v11

    goto :goto_3

    :cond_8
    move v2, v10

    .line 27
    :goto_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o00O()Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v2, v2, 0x1

    .line 28
    :cond_9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoo()Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    :cond_a
    if-le v2, v11, :cond_b

    move v2, v11

    goto :goto_4

    :cond_b
    move v2, v10

    :goto_4
    if-eqz v2, :cond_d

    const v3, 0x7f120607

    const-string/jumbo v4, "pref_photo_assistance_tips"

    .line 29
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    goto :goto_5

    :cond_c
    move v2, v11

    .line 30
    :cond_d
    :goto_5
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getSmartGuideKeys()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    if-eqz v3, :cond_e

    const v3, 0x7f120865

    const-string/jumbo v4, "pref_tips_guide"

    .line 31
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    :cond_e
    if-nez v2, :cond_12

    .line 32
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o00O()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    if-nez v2, :cond_10

    const/4 v5, -0x1

    const v6, 0x7f12074b

    .line 33
    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-eqz v2, :cond_f

    const v2, 0x7f1205cc

    goto :goto_6

    :cond_f
    const v2, 0x7f12074a

    :goto_6
    move v7, v2

    const-string/jumbo v4, "pref_camera_lying_tip_switch_key"

    move-object v2, p0

    move-object v3, v0

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 35
    :cond_10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO()Z

    move-result v2

    if-eqz v2, :cond_11

    const v5, 0x7f050050

    const v6, 0x7f12083d

    const v7, 0x7f12083c

    const-string/jumbo v4, "pref_pic_flaw_tip"

    move-object v2, p0

    move-object v3, v0

    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 37
    :cond_11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoo()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v5, -0x1

    const v6, 0x7f120824

    const v7, 0x7f120823

    const-string/jumbo v4, "pref_lens_dirty_tip"

    move-object v2, p0

    move-object v3, v0

    .line 38
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 39
    :cond_12
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getCameraSnapSettingNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_13

    const v5, 0x7f05003a

    const v6, 0x7f1207a0

    const v7, 0x7f1207a2

    const-string/jumbo v4, "pref_camera_snap_key"

    move-object v2, p0

    move-object v3, v0

    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 41
    :cond_13
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getMirrorSettingUiNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    const v5, 0x7f050049

    const v6, 0x7f120818

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_front_mirror_boolean_key"

    move-object v2, p0

    move-object v3, v0

    .line 42
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 43
    :cond_14
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getVideoTimeLapseNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    const v5, 0x7f1208a7

    const v6, 0x7f1208b5

    const v7, 0x7f03003b

    const v8, 0x7f03003c

    const v9, 0x7f03003d

    const-string/jumbo v4, "pref_video_time_lapse_frame_interval_key"

    move-object v2, p0

    move-object v3, v0

    .line 44
    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addVideoTimeLapsePreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIIII)V

    .line 45
    :cond_15
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getUltraWideLDCUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_16

    const v5, 0x7f050041

    const v6, 0x7f1207c5

    const v7, 0x7f1207c4

    const-string/jumbo v4, "pref_camera_ultra_wide_ldc_key"

    move-object v2, p0

    move-object v3, v0

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 47
    :cond_16
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getNormalWideLDCUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_17

    const v5, 0x7f05002a

    const v6, 0x7f12075d

    const v7, 0x7f12075c

    const-string/jumbo v4, "pref_camera_normal_wide_ldc_key"

    move-object v2, p0

    move-object v3, v0

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 49
    :cond_17
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getAiShutterSettingUiState(I)Lcom/android/camera/SettingUiState;

    move-result-object v8

    .line 50
    iget-boolean v2, v8, Lcom/android/camera/SettingUiState;->isNeed:Z

    const v9, 0x7f050032

    const v12, 0x7f050031

    if-eqz v2, :cond_19

    .line 51
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOoOO()Z

    move-result v2

    if-eqz v2, :cond_18

    move v5, v9

    goto :goto_7

    :cond_18
    move v5, v12

    :goto_7
    const v6, 0x7f12064f

    const v7, 0x7f12064e

    const-string/jumbo v4, "pref_camera_ai_shutter_key"

    move-object v2, p0

    move-object v3, v0

    .line 52
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 53
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_ai_shutter_key"

    invoke-virtual {p0, v2, v3, v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 54
    :cond_19
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->isAsdNightNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_1a

    const v5, 0x7f050012

    const v6, 0x7f120867

    const v7, 0x7f120866

    const-string/jumbo v4, "pref_camera_asd_night_key"

    move-object v2, p0

    move-object v3, v0

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 56
    :cond_1a
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->isNevusWipeNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v5, 0x7f050029

    const v6, 0x7f120648

    const v7, 0x7f120647

    const-string/jumbo v4, "pref_beautify_nevus_wipe_switch"

    move-object v2, p0

    move-object v3, v0

    .line 57
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 58
    :cond_1b
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->isMaleMakeupSwitchNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    const v5, 0x7f050025

    const v6, 0x7f120646

    const v7, 0x7f120645

    const-string/jumbo v4, "pref_beautify_makeup_male_switch"

    move-object v2, p0

    move-object v3, v0

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 60
    :cond_1c
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->isNearRangeUiNeed(IZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    const v5, 0x7f050028

    const v6, 0x7f1208f5

    const v7, 0x7f1208f4

    const-string/jumbo v4, "pref_camera_near_range_key"

    move-object v2, p0

    move-object v3, v0

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 62
    :cond_1d
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->isHeicImageFormatSelectable(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v8

    const-string/jumbo v13, "pref_camera_heic_image_format_key"

    .line 63
    invoke-virtual {v8, v13}, Lcom/android/camera/SettingUiState;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-boolean v2, v8, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_1e

    const v5, 0x7f05001c

    const v6, 0x7f120709

    const v7, 0x7f120708

    const-string/jumbo v4, "pref_camera_heic_image_format_key"

    move-object v2, p0

    move-object v3, v0

    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 66
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v13, v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 67
    :cond_1e
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getQualityPreferredUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_1f

    const v5, 0x7f05001d

    const v6, 0x7f12070f

    const v7, 0x7f12070e

    const-string/jumbo v4, "pref_camera_high_quality_preferred_key"

    move-object v2, p0

    move-object v3, v0

    .line 68
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 69
    :cond_1f
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraPhotoHistogramNeed(I)Z

    move-result v2

    if-eqz v2, :cond_21

    if-eqz v1, :cond_20

    move v5, v9

    goto :goto_8

    :cond_20
    move v5, v12

    :goto_8
    const v6, 0x7f1205e6

    const v7, 0x7f120440

    const-string/jumbo v4, "pref_camera_pro_video_histogram"

    move-object v2, p0

    move-object v3, v0

    .line 70
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 71
    :cond_21
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getJpegQualityUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_22

    const v5, 0x7f120738

    const v6, 0x7f12073c

    const v7, 0x7f030020

    const v8, 0x7f030021

    const-string/jumbo v4, "pref_camera_jpegquality_key"

    move-object v2, p0

    move-object v3, v0

    .line 72
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    .line 73
    :cond_22
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    iget v4, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoIntentQuality:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/CameraSettings;->getMovieSolidUiState(IZI)Lcom/android/camera/SettingUiState;

    move-result-object v8

    .line 74
    iget-boolean v2, v8, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_23

    const v5, 0x7f050027

    const v6, 0x7f120752

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_camera_movie_solid_key"

    move-object v2, p0

    move-object v3, v0

    .line 75
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 76
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v2, v3, v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 77
    :cond_23
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraOnlyVideoHistogramNeed(I)Z

    move-result v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_24

    move v5, v9

    goto :goto_9

    :cond_24
    move v5, v12

    :goto_9
    const v6, 0x7f1205e6

    const v7, 0x7f120440

    const-string/jumbo v4, "pref_camera_pro_video_histogram"

    move-object v2, p0

    move-object v3, v0

    .line 78
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 79
    :cond_25
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getAutoHibernationUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 80
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_26

    const v5, 0x7f050014

    const v6, 0x7f120660

    const v7, 0x7f120661

    const-string/jumbo v4, "pref_camera_auto_hibernation_key"

    move-object v2, p0

    move-object v3, v0

    .line 81
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    move-result-object v2

    const v3, 0x7f120661

    .line 82
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_auto_hibernation_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 84
    :cond_26
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraProfessionalDisplayNeed(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const v1, 0x7f120839

    const-string/jumbo v2, "pref_professional_display_key"

    .line 85
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 86
    :cond_27
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraKaraokeFunctionNeed(I)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v11

    goto :goto_a

    :cond_28
    move v1, v10

    .line 87
    :goto_a
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraNSNeed(I)Z

    move-result v2

    if-nez v2, :cond_29

    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    .line 88
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getIntelligentNoiseReductionNeed(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 89
    :cond_2a
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraBluetoothHeadsetNeed(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    add-int/lit8 v1, v1, 0x1

    .line 90
    :cond_2b
    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getCameraAiAudio3DNeed(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    if-le v1, v11, :cond_2d

    .line 91
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraSoundSettingNeed(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v1, 0x7f120832

    const-string/jumbo v2, "pref_sound_setting_key"

    .line 92
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    goto :goto_b

    .line 93
    :cond_2d
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraKaraokeFunctionNeed(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const v5, 0x7f050020

    const v6, 0x7f120821

    const v7, 0x7f120822

    const-string/jumbo v4, "pref_karaoke_key"

    move-object v2, p0

    move-object v3, v0

    .line 94
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 95
    :cond_2e
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getCameraBluetoothHeadsetNeed(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const v5, 0x7f05001b

    const v6, 0x7f12080a

    const v7, 0x7f12080b

    const-string/jumbo v4, "pref_earphone_key"

    move-object v2, p0

    move-object v3, v0

    .line 96
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 97
    :cond_2f
    :goto_b
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isH265EncoderUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 98
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_30

    const v5, 0x7f120878

    const v6, 0x7f12087b

    const v7, 0x7f030030

    const v8, 0x7f030031

    const-string/jumbo v4, "pref_video_encoder_key"

    move-object v2, p0

    move-object v3, v0

    .line 99
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    .line 100
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_video_encoder_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 101
    :cond_30
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getTrueColourUiNeedRemove(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 102
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_31

    const v5, 0x7f050058

    const v6, 0x7f120869

    const v7, 0x7f120868

    const-string/jumbo v4, "pref_true_colour_video_mode_key"

    move-object v2, p0

    move-object v3, v0

    .line 103
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 104
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_true_colour_video_mode_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 105
    :cond_31
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getHDR10UiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 106
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_32

    const v5, 0x7f05004d

    const v6, 0x7f12081d

    const v7, 0x7f12081c

    const-string/jumbo v4, "pref_hdr10_video_mode_key"

    move-object v2, p0

    move-object v3, v0

    .line 107
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 108
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_hdr10_video_mode_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 109
    :cond_32
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getHdr10ProUiNeedRemove(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 110
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_34

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "persist.camera.settings.hlg"

    .line 111
    invoke-static {v2, v10}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_33
    const v5, 0x7f05004d

    const v6, 0x7f1209f5

    const v7, 0x7f12081f

    const-string/jumbo v4, "pref_hlg_video_mode_key"

    move-object v2, p0

    move-object v3, v0

    .line 112
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 113
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_hlg_video_mode_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 114
    :cond_34
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getHDR10PlusUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 115
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_35

    const v5, 0x7f05004e

    const v6, 0x7f1209f4

    const v7, 0x7f12081b

    const-string/jumbo v4, "pref_hdr10plus_video_mode_key"

    move-object v2, p0

    move-object v3, v0

    .line 116
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 117
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_hdr10plus_video_mode_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 118
    :cond_35
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getVideoDynamicFpsSettingUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 119
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_36

    const v5, 0x7f050017

    const v6, 0x7f120699

    const v7, 0x7f120697

    const-string/jumbo v4, "pref_camera_dynamic_frame_rate_key"

    move-object v2, p0

    move-object v3, v0

    .line 120
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 121
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_camera_dynamic_frame_rate_key"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 122
    :cond_36
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getVideoDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 123
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_37

    const v2, 0x7f12063e

    const-string/jumbo v3, "pref_video_denoise"

    .line 124
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addValuePreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Lcom/android/camera/ui/ValuePreference;

    .line 125
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 126
    :cond_37
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getWindDenoiseUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v1

    .line 127
    iget-boolean v2, v1, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v2, :cond_38

    const v5, 0x7f05005b

    const v6, 0x7f1208ba

    const/4 v7, -0x1

    const-string/jumbo v4, "pref_wind_denoise"

    move-object v2, p0

    move-object v3, v0

    .line 128
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 129
    iget-object v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v3, "pref_wind_denoise"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 130
    :cond_38
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->hideCategoryIfGroupEmpty(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method private addQuickPreferences()V
    .locals 9

    const-string v0, "category_quick_setting"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getVolumeCameraSettingNeed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v5, 0x7f1207db

    const v6, 0x7f1207de

    const v7, 0x7f03002b

    const v8, 0x7f03002c

    const-string/jumbo v4, "pref_camera_volumekey_function_key"

    move-object v2, p0

    move-object v3, v0

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addPreviewListPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;IIII)V

    .line 5
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->getFocusShootSettingNeed(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const v5, 0x7f050036

    const v6, 0x7f1207b1

    const v7, 0x7f1207b0

    const-string/jumbo v4, "pref_camera_focus_shoot_key"

    move-object v2, p0

    move-object v3, v0

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->addCheckBoxPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;III)Landroidx/preference/CheckBoxPreference;

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->hideCategoryIfGroupEmpty(Landroidx/preference/PreferenceCategory;)V

    return-void
.end method

.method private bringUpDoubleConfirmDlg(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1207a9

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f1207a8

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120999

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1204cc

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120912

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;

    invoke-direct {v5, p0, p2, p1, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$3;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;Ljava/lang/String;Landroidx/preference/Preference;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const p1, 0x7f120911

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$4;

    invoke-direct {v9, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$4;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    .line 6
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mDoubleConfirmActionChooseDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    new-instance p2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$5;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$5;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private closeLocationPreference()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    return-void
.end method

.method private getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewListPreference;->getStoredDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2a70450

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "pref_camera_volumekey_function_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_4
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;[Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private getRetainStatusKeys()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "pref_retain_camera_mode_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "pref_retain_beauty_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "pref_retain_ai_scene_key"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00Ooo00()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "pref_retain_live_shot"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getSmartGuideKeys()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAiTipNeed(IZ)Z

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOo0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pref_camera_ai_detect_id_card"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOO0()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pref_camera_ai_detect_doc"

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v1, v3}, Lcom/android/camera/CameraSettings;->getScanQrcodeSettingNeed(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "pref_scan_qrcode_key"

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private hideCategoryIfGroupEmpty(Landroidx/preference/PreferenceCategory;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public static readKeptValues(Z)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_first_use_permission_shown_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/android/camera/data/data/global/DataItemGlobal;->sUseHints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static resetPreferences(Z)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->readKeptValues(Z)Ljava/util/HashMap;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetAll()V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->resetAll()V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(II)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->resetAll()V

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->resetAll()V

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->clearArrayMap()V

    .line 12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/backup/DataBackUp;->clearBackUp()V

    .line 13
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoO0()Z

    move-result p0

    if-nez p0, :cond_1

    .line 16
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->generateWatermark2File()V

    :cond_1
    return-void
.end method

.method private resetTimeOutFlag()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mHasReset:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    :cond_0
    return-void
.end method

.method private restorePreferences()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restorePreferences onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mHasReset:Z

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->resetPreferences(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_long_press_volume_down"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Street-snap-picture"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Street-snap-movie"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ShutterSound;->getInstance()Lcom/android/camera/customization/ShutterSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/customization/ShutterSound;->release()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->initializeActivity()V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    const/4 v0, 0x3

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onSettingChanged(I)V

    return-void
.end method

.method private scrollToTrackFocus()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string v1, "category_module_setting"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    const/4 v2, -0x3

    move v3, v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_camera_track_focus_preferred_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showVideoCastDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209db

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1205bd

    goto :goto_0

    :cond_1
    const v1, 0x7f1205bc

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f12033f

    .line 5
    new-instance v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$6;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$6;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6
    new-instance v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$7;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 7
    new-instance v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$8;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateConflictPreferences()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    iget v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoIntentQuality:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->getMovieSolidUiState(IZI)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_camera_movie_solid_key"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 3
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isH265EncoderUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_video_encoder_key"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 5
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getVideoTagSettingUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lcom/android/camera/SettingUiState;->isNeed:Z

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_camera_video_tag_key"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    iget-boolean v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getTrackFocusUiState(IZ)Lcom/android/camera/SettingUiState;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "pref_camera_track_focus_preferred_key"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->dealPreferenceMutexEnable(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Lcom/android/camera/SettingUiState;)V

    return-void
.end method

.method private updatePhotoAssistanceTips(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o00O()Z

    move-result v0

    const v1, 0x7f12083b

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v2, "pref_camera_lying_tip_switch_key"

    .line 2
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0OO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v2, "pref_pic_flaw_tip"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoOoo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0Oo()Z

    move-result v0

    const-string/jumbo v2, "pref_lens_dirty_tip"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-void

    :cond_3
    const p1, 0x7f12083a

    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updatePrivacyWatermark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1208b8

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1208b7

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isFromSecureKeyguard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 6
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateProfessionalDisplay(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mProfessionDisplay:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Ooooooo()Z

    move-result v0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooo00O()Z

    move-result v1

    const-string/jumbo v2, "pref_audio_map_key"

    .line 4
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "pref_camera_pro_video_histogram"

    .line 5
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f120834

    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f120833

    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateRecordLocation(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string/jumbo v3, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 8
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateValuePreferenceStatus(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Lcom/android/camera/ui/ValuePreference;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO00o;

    invoke-direct {v0, p1}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO00o;-><init>(Landroid/content/SharedPreferences;)V

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1208b8

    goto :goto_0

    :cond_1
    const p1, 0x7f1208b7

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private updateVideoDenoise(Lcom/android/camera/ui/ValuePreference;)V
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isWindDenoiseOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontDenoiseOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f120875

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f120876

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateWaterMark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->testCC()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "pref_cv_watermark_key"

    .line 4
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oOO0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "pref_dualcamera_watermark_key"

    .line 6
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "pref_time_watermark_key"

    .line 7
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const p1, 0x7f1208b8

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const p1, 0x7f1208b7

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/ui/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->closeLocationPreference()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->closeLocationPreference()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public addCurrentPreferences()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->addModulePreferences()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->addQuickPreferences()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->addCommonPreferences()V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->addAdvancePreferences()V

    :cond_0
    return-void
.end method

.method public dismissPermissionNotAskDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getFragmentTitle()I
    .locals 1

    const v0, 0x7f120794

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->resetTimeOutFlag()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->initStorage(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_video_quality"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoIntentQuality:I

    .line 5
    invoke-super {p0, p1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->resetTimeOutFlag()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPause()V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    return-void
.end method

.method public onPermissionResult(Z)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceChange: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string/jumbo v4, "pref_camera_movie_solid_key"

    const-string/jumbo v5, "pref_true_colour_video_mode_key"

    const-string/jumbo v6, "pref_hlg_video_mode_key"

    const-string/jumbo v7, "pref_hdr10plus_video_mode_key"

    const/4 v8, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v3, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v3, "pref_feature_auto_download_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v3, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v3, "pref_camera_snap_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "pref_priority_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "pref_hdr10_video_mode_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "pref_time_watermark_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "pref_camera_volumekey_function_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "pref_video_cast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "pref_camera_track_focus_preferred_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_c
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_e
    const-string/jumbo v3, "pref_camera_track_eye_preferred_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0xb

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 5
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_cv_watermark_key"

    invoke-interface {v0, v1, v8}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    goto/16 :goto_8

    .line 7
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/rcs/network/NetworkDiagnostics;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->startAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 10
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->showVideoCastDialog()V

    goto/16 :goto_8

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService;->stopAdvertising(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 12
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/trackfocus/ComponentConfigTrackEye;->setTrackEye(Z)V

    goto/16 :goto_8

    .line 13
    :pswitch_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setTrackFocusOn(Z)V

    goto/16 :goto_8

    .line 14
    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->setSwitchOn(Z)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->setSwitchOn(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 18
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 20
    :cond_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrueColour()Lcom/android/camera/hdr10/ComponentConfigTrueColour;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->setSwitchOn(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 22
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateConflictPreferences()V

    .line 25
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "attr_video_hdr10_plus"

    goto :goto_2

    :cond_7
    const-string p1, "attr_video_hdr10"

    .line 26
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 28
    :pswitch_5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->setSwitchOn(Z)V

    .line 29
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 30
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->setSwitchOn(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 32
    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 34
    :cond_8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrueColour()Lcom/android/camera/hdr10/ComponentConfigTrueColour;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->setSwitchOn(Z)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 36
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_9

    .line 37
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 38
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateConflictPreferences()V

    .line 39
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "attr_video_hlg"

    invoke-static {p2, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 40
    :pswitch_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigTrueColour()Lcom/android/camera/hdr10/ComponentConfigTrueColour;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/camera/hdr10/ComponentConfigTrueColour;->setSwitchOn(Z)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 42
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->setSwitchOn(Z)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 44
    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_a

    .line 45
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 46
    :cond_a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10PRO()Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/android/camera/hdr10/ComponentConfigHDR10PRO;->setSwitchOn(Z)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    .line 48
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_b

    .line 49
    invoke-virtual {p1, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 50
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateConflictPreferences()V

    const-string p1, "attr_video_true_colour"

    .line 51
    invoke-static {p1, p2}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 52
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;->setPriorityStorage(Z)V

    return v2

    .line 53
    :pswitch_8
    iget v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v1, 0xa3

    if-nez v0, :cond_c

    move v0, v1

    :cond_c
    const/16 v2, 0xab

    if-eq v0, v1, :cond_d

    const/16 v3, 0xa7

    if-eq v0, v3, :cond_d

    if-eq v0, v2, :cond_d

    .line 54
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    const v0, 0x7f1207da

    .line 55
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f1207dc

    .line 56
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f1207db

    .line 57
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    const v0, 0x7f1207dd

    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 59
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 60
    :cond_f
    :goto_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    .line 61
    invoke-static {v2, v0}, Lcom/android/camera/CameraSettings;->setVolumeCameraFunction(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 62
    :pswitch_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_10

    goto :goto_4

    :cond_10
    const-string/jumbo v4, "pref_camera_pro_mode_movie_solid_key"

    .line 63
    :goto_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto/16 :goto_8

    .line 64
    :pswitch_a
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange: KEY_FEATURE_AUTO_DOWNLOAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 65
    :pswitch_b
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange: KEY_RECORD_LOCATION "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 67
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_18

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    iput-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$9;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_5

    .line 73
    :cond_11
    invoke-static {p0, p0}, Lcom/android/camera/permission/PermissionManager;->requestCameraLocationPermissionsByFragment(Landroidx/fragment/app/Fragment;Lcom/android/camera/aiwatermark/lisenter/IPermissionListener;)Z

    .line 74
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return v8

    :pswitch_c
    if-nez p2, :cond_12

    goto :goto_8

    :cond_12
    const v0, 0x7f1207a7

    .line 75
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    instance-of v3, p2, Ljava/lang/Boolean;

    const v4, 0x7f1207a9

    if-eqz v3, :cond_14

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 78
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_6
    move-object v1, p2

    goto :goto_7

    .line 79
    :cond_14
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 80
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 81
    :cond_15
    :goto_7
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "key_long_press_volume_down"

    if-nez p2, :cond_16

    const p2, 0x7f1207a8

    .line 82
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 83
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "public_transportation_shortcuts"

    .line 84
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->bringUpDoubleConfirmDlg(Landroidx/preference/Preference;Ljava/lang/String;)V

    return v8

    .line 86
    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 87
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p1, "attr_snap_enable"

    .line 89
    invoke-static {p1, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 90
    :cond_18
    :goto_8
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateConflictPreferences()V

    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x461dcb5f -> :sswitch_e
        -0x44ba2702 -> :sswitch_d
        -0x3eb410cd -> :sswitch_c
        -0x34a71c78 -> :sswitch_b
        -0x105c3be1 -> :sswitch_a
        -0x2a70450 -> :sswitch_9
        0x2110d1ae -> :sswitch_8
        0x22e72f8d -> :sswitch_7
        0x3175697c -> :sswitch_6
        0x32d14228 -> :sswitch_5
        0x67b0c582 -> :sswitch_4
        0x6b42607f -> :sswitch_3
        0x747baa93 -> :sswitch_2
        0x7b5de9e4 -> :sswitch_1
        0x7be5a385 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v2, :cond_0

    return v3

    .line 4
    :cond_0
    sget-object v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceClick: key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    const-class v2, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;

    goto :goto_0

    :cond_1
    const-class v2, Lcom/android/camera/fragment/settings/PreferenceExtraPadActivity;

    :goto_0
    const/4 v5, -0x1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xa

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "pref_photo_assistance_tips"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v6, "pref_auto_boot"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v6, "pref_professional_display_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v6, "pref_video_denoise"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "pref_watermark_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "pref_popup_camera"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "pref_restore"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v8

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "pref_sound_setting_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "pref_privacy_watermark_entry"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_9
    const-string/jumbo v6, "pref_retain_camera_status_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_a
    const-string/jumbo v6, "pref_tips_guide"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_b
    const-string/jumbo v6, "pref_customization_key"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v7

    goto :goto_1

    :sswitch_c
    const-string/jumbo v6, "pref_privacy"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v3

    :cond_2
    :goto_1
    const/4 v1, 0x0

    packed-switch v5, :pswitch_data_0

    return v8

    .line 8
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const/4 v10, 0x0

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12041c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1204ab

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0Oo;

    invoke-direct {v13, v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0Oo;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12033a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0O0;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0O0;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    move-object/from16 v17, v1

    .line 13
    invoke-static/range {v9 .. v17}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 14
    invoke-virtual {v1, v8}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_2

    :cond_3
    const-string v2, "attr_auto_boot"

    .line 15
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 19
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    :goto_2
    return v3

    .line 20
    :pswitch_1
    sget-object v1, Lcom/android/camera/fragment/settings/PhotoAssistanceTipsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    return v3

    .line 22
    :pswitch_2
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    const-string v4, "CustomizationFragment"

    .line 23
    invoke-virtual {v0, v2, v4}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v2, "attr_custom_camera"

    .line 24
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-static {v2}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    return v3

    .line 26
    :pswitch_3
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    const-string v1, "VideoDenoiseFragment"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    :pswitch_4
    const-string v1, "ProfessionalDisplay"

    const-string/jumbo v5, "onPreferenceClick: ProfessionalDisplay  "

    .line 28
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    const-string v1, "ProfessionalDisplayFragment"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr_preference_display_click"

    .line 32
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "M_proVideo_"

    .line 33
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return v3

    :pswitch_5
    const-string v1, "NoiseReduction"

    const-string/jumbo v5, "onPreferenceClick: NoiseReduction  "

    .line 34
    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    const-string v1, "SoundSettingFragment"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "attr_sound_setting_click"

    .line 38
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key_video_common_click"

    .line 39
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    return v3

    .line 40
    :pswitch_6
    sget-object v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPreferenceClick: tip setting"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    .line 42
    sget-object v1, Lcom/android/camera/fragment/settings/SmartGuideFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    :pswitch_7
    const-string v1, "attr_privacy_watermark_page"

    .line 43
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackPrivacyWaterMarkSettingClick(Ljava/lang/String;)V

    .line 44
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-nez v2, :cond_4

    .line 46
    const-class v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefActivity;

    goto :goto_3

    :cond_4
    const-class v2, Lcom/android/camera/privacywatermark/PrivacyWatermarkPrefPadActivity;

    .line 47
    :goto_3
    invoke-static {v1, v2}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    return v3

    .line 48
    :pswitch_8
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    const-string v1, "WatermarkFragment"

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    .line 50
    :pswitch_9
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ActivityLauncher;->launchPopupCameraSetting(Landroid/content/Context;)V

    const-string v2, "attr_popup_camera"

    .line 52
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 53
    :pswitch_a
    iput-boolean v3, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    .line 54
    sget-object v1, Lcom/android/camera/fragment/settings/RetainCameraStatusFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->goToActivity(Ljava/lang/Class;Ljava/lang/String;)V

    return v3

    .line 55
    :pswitch_b
    sget-boolean v2, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 56
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "debug.info"

    invoke-static {v2, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->assetsFileToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 57
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v2, 0x20

    .line 58
    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 59
    sget-object v4, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " miuicamera apk : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/ActivityLauncher;->launchPrivacyPolicyWebpage(Landroid/app/Activity;)V

    const-string v2, "attr_privacy"

    .line 62
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    .line 63
    :pswitch_c
    iget-object v2, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v2, :cond_6

    return v3

    :cond_6
    const-string v2, "attr_restore"

    .line 64
    invoke-static {v2, v1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v1, 0x7f12030d

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f12030c

    .line 67
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x104000a

    .line 68
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0o;

    invoke-direct {v8, v0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0o;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v1, 0x1040000

    .line 69
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0oO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0oO;

    .line 70
    invoke-static/range {v4 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 71
    new-instance v2, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;

    invoke-direct {v2, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$10;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v3

    :sswitch_data_0
    .sparse-switch
        -0x66616694 -> :sswitch_c
        -0x5ecc4329 -> :sswitch_b
        -0x509e492f -> :sswitch_a
        -0x43b60032 -> :sswitch_9
        -0x24006ffc -> :sswitch_8
        -0x1a885a5c -> :sswitch_7
        -0x1237b78e -> :sswitch_6
        0x48c0eb4 -> :sswitch_5
        0x3fbfdee8 -> :sswitch_4
        0x5e164e59 -> :sswitch_3
        0x64ca3de6 -> :sswitch_2
        0x6dd4d866 -> :sswitch_1
        0x7a092eb6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestPermissionsResult: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 3
    invoke-static {p2, p3}, Lcom/android/camera/permission/PermissionManager;->isCameraLocationPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRequestPermissionsResult: is location granted = true"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mRecordLocation:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 7
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera/permission/PermissionManager;->shouldShowRequestPermissionRationale(Landroid/app/Activity;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onRequestPermissionsResult: is location denied"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->toshowPermissionNotAskDialog()V

    :cond_3
    return-void
.end method

.method public onRestart()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mRecordLocation:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateRecordLocation(Landroidx/preference/CheckBoxPreference;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mWatermark:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateWaterMark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPrivacyWatermark:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updatePrivacyWatermark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mProfessionDisplay:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateProfessionalDisplay(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPhotoAssistanceTips:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updatePhotoAssistanceTips(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoDenoise:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateVideoDenoise(Lcom/android/camera/ui/ValuePreference;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mTipsGuideSetting:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getSmartGuideKeys()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateValuePreferenceStatus(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;Ljava/util/HashMap;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-object v1, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mRetainCameraStatus:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getRetainStatusKeys()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateValuePreferenceStatus(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;Ljava/util/HashMap;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mGoToActivity:Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->initializeActivity()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isLabOptionsVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120242

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 6
    new-instance v0, Lcom/android/camera/AudioManagerAudioDeviceCallback;

    invoke-direct {v0}, Lcom/android/camera/AudioManagerAudioDeviceCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioManagerAudioDeviceCallback:Lcom/android/camera/AudioManagerAudioDeviceCallback;

    iget-object v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mAudioDeviceChangeListener:Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/camera/AudioManagerAudioDeviceCallback;->setOnAudioDeviceChangeListener(Lcom/android/camera/AudioManagerAudioDeviceCallback$OnAudioDeviceChangeListener;)V

    .line 9
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0O0o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$2;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.xiaomi.camera.videocast.action.SERVICE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoCastTileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v0, "pref_camerasound_key"

    .line 14
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scroll_to"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->INTENT_VALUE_SCROLL_TO_TRACK_FOCUS:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart: scroll to KEY_TRACK_FOCUS"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->scrollToTrackFocus()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->dismissPermissionNotAskDialog()V

    return-void
.end method

.method public registerPreferenceListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, p0}, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->registerListener(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mRecordLocation:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_restore"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_retain_camera_status_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mRetainCameraStatus:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_auto_boot"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_popup_camera"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_priority_storage"

    .line 16
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_facedetection_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mWatermark:Landroidx/preference/Preference;

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_privacy_watermark_entry"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPrivacyWatermark:Landroidx/preference/Preference;

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_tips_guide"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mTipsGuideSetting:Landroidx/preference/Preference;

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 26
    :cond_a
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_sound_setting_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mNoiseSetting:Landroidx/preference/Preference;

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 28
    :cond_b
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_professional_display_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mProfessionDisplay:Landroidx/preference/Preference;

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_customization_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mCustomization:Landroidx/preference/Preference;

    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 32
    :cond_d
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_photo_assistance_tips"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPhotoAssistanceTips:Landroidx/preference/Preference;

    if-eqz v0, :cond_e

    .line 33
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 34
    :cond_e
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_video_denoise"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mVideoDenoise:Landroidx/preference/Preference;

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_f
    return-void
.end method

.method public toshowPermissionNotAskDialog()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v0

    const v1, 0x7f12033a

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f12049a

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v5, 0x7f1204ab

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0o0;

    invoke-direct {v6, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0o0;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0OO;

    invoke-direct {v10, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/o00ooo/OooO0OO;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    .line 7
    invoke-static/range {v2 .. v10}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f12049c

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1204a9

    .line 9
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$11;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;

    invoke-direct {v9, p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment$12;-><init>(Lcom/android/camera/fragment/settings/CameraPreferenceFragment;)V

    move-object v1, v0

    .line 11
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mPermissionNotAskDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public updatePreferenceEntries()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_antibanding_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_snap_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oo0oO()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_long_press_volume_down"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "public_transportation_shortcuts"

    .line 9
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "none"

    .line 10
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 13
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMiuiSettingsKeyForStreetSnap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    const v1, 0x7f1207a9

    .line 16
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f1207a8

    .line 17
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 18
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_4
    const-string v1, "Street-snap-picture"

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Street-snap-movie"

    .line 20
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    :cond_5
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 22
    :cond_6
    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 23
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_camera_volumekey_function_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewListPreference;

    .line 24
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 25
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const v5, 0x7f1207d5

    .line 26
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v5, 0x7f1207da

    .line 27
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    iget v5, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v5}, Lcom/android/camera/CameraSettings;->isInAllRecordModeSet(I)Z

    move-result v5

    const/16 v6, 0xa6

    const/16 v7, 0xb0

    if-nez v5, :cond_8

    iget v5, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v8, 0xba

    if-eq v5, v8, :cond_8

    const/16 v8, 0xb6

    if-eq v5, v8, :cond_8

    const/16 v8, 0xb8

    if-eq v5, v8, :cond_8

    if-eq v5, v7, :cond_8

    if-eq v5, v6, :cond_8

    const/16 v8, 0xad

    if-eq v5, v8, :cond_8

    const v5, 0x7f1207d7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x2

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1207db

    .line 30
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_8
    iget-boolean v2, p0, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->mIsFrontCamera:Z

    if-nez v2, :cond_a

    iget v2, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    const/16 v5, 0xaf

    if-eq v2, v5, :cond_a

    const/16 v5, 0xd3

    if-eq v2, v5, :cond_a

    const/16 v5, 0xb3

    if-eq v2, v5, :cond_a

    const/16 v5, 0xd1

    if-eq v2, v5, :cond_a

    if-eq v2, v7, :cond_a

    if-eq v2, v6, :cond_a

    const/16 v5, 0xab

    if-eq v2, v5, :cond_a

    const/16 v5, 0xcc

    if-ne v2, v5, :cond_9

    .line 32
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oOooo0o()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    const v2, 0x7f1207d9

    .line 33
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1207dd

    .line 34
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_a
    const v2, 0x7f1207d8

    .line 35
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f1207dc

    .line 36
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 39
    iget v1, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mFromWhere:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getVolumeCameraFunction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/android/camera/fragment/settings/BasePreferenceFragment;->mPreferenceGroup:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "pref_dualcamera_watermark_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    return-void
.end method

.method public updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_19

    .line 2
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_privacy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->startFromKeyGuard(Landroid/app/Activity;)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5
    :cond_1
    instance-of v4, v3, Lcom/android/camera/ui/ValuePreference;

    if-eqz v4, :cond_8

    .line 6
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_watermark_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, p2, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateWaterMark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 8
    :cond_2
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_privacy_watermark_entry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, p2, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updatePrivacyWatermark(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 10
    :cond_3
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_professional_display_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, p2, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateProfessionalDisplay(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 12
    :cond_4
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_photo_assistance_tips"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, p2, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updatePhotoAssistanceTips(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;)V

    .line 14
    :cond_5
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_video_denoise"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateVideoDenoise(Lcom/android/camera/ui/ValuePreference;)V

    .line 16
    :cond_6
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_tips_guide"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 17
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getSmartGuideKeys()Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {p0, p2, v4, v5}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateValuePreferenceStatus(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;Ljava/util/HashMap;)V

    .line 18
    :cond_7
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pref_retain_camera_status_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 19
    check-cast v3, Lcom/android/camera/ui/ValuePreference;

    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getRetainStatusKeys()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateValuePreferenceStatus(Landroid/content/SharedPreferences;Lcom/android/camera/ui/ValuePreference;Ljava/util/HashMap;)V

    goto/16 :goto_4

    .line 20
    :cond_8
    instance-of v4, v3, Lcom/android/camera/ui/PreviewListPreference;

    if-eqz v4, :cond_9

    .line 21
    move-object v4, v3

    check-cast v4, Lcom/android/camera/ui/PreviewListPreference;

    .line 22
    invoke-direct {p0, v4, p2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->getFilterValue(Lcom/android/camera/ui/PreviewListPreference;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 24
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25
    invoke-virtual {v4}, Lmiuix/preference/DropDownPreference;->getValueIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/camera/ui/PreviewListPreference;->getEntryByIndex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 26
    :cond_9
    instance-of v4, v3, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_16

    .line 27
    move-object v4, v3

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    .line 28
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    const-string/jumbo v8, "pref_camera_movie_solid_key"

    .line 30
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 31
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v7

    .line 32
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoEisBeautyMeanwhileEnable()Z

    move-result v8

    if-eqz v8, :cond_a

    move v7, v5

    .line 33
    :cond_a
    invoke-virtual {v4, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 34
    :cond_b
    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 35
    :goto_1
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const-string/jumbo v7, "pref_camera_recordlocation_key"

    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 37
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 38
    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/camera/CameraSettings;->isRecordLocation()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 39
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 40
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->updateRecordLocationPreference(Z)V

    :cond_c
    const-string/jumbo v7, "pref_camera_ai_shutter_key"

    .line 41
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-eqz v3, :cond_d

    .line 42
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    .line 43
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v8

    invoke-virtual {v8}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooOoOO()Z

    move-result v8

    .line 44
    invoke-virtual {v3, v7, v8}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 45
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    const-string/jumbo v3, "pref_hdr10_video_mode_key"

    .line 46
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 47
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10On()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_e
    const-string/jumbo v3, "pref_hdr10plus_video_mode_key"

    .line 48
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 49
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10On()Z

    move-result v3

    if-nez v3, :cond_10

    .line 50
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigHDR10()Lcom/android/camera/hdr10/ComponentConfigHDR10;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/hdr10/ComponentConfigHDR10;->isHdr10PlusOn()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_2

    :cond_f
    move v5, v1

    .line 51
    :cond_10
    :goto_2
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_11
    const-string/jumbo v3, "pref_hlg_video_mode_key"

    .line 52
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 53
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_12
    const-string/jumbo v3, "pref_true_colour_video_mode_key"

    .line 54
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 56
    :cond_13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 57
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result v3

    if-eqz v3, :cond_14

    const v3, 0x7f120770

    .line 58
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f12076f

    .line 59
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_14
    const v3, 0x7f12064f

    .line 60
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f12064e

    .line 61
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_3
    const-string/jumbo v3, "pref_video_cast"

    .line 62
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/camera/videocast/VideoCastService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v3

    .line 64
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 65
    :cond_16
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_17

    .line 66
    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updatePreferences(Landroidx/preference/PreferenceGroup;Landroid/content/SharedPreferences;)V

    goto :goto_4

    .line 67
    :cond_17
    sget-object v4, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no need update preference for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 68
    :cond_19
    invoke-direct {p0}, Lcom/android/camera/fragment/settings/CameraPreferenceFragment;->updateConflictPreferences()V

    return-void
.end method
